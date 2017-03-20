.class public Lcom/cmdm/control/dao/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aN:Lcom/cmdm/control/dao/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static aT()Lcom/cmdm/control/dao/j;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/cmdm/control/dao/j;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/cmdm/control/dao/j;

    invoke-direct {v0}, Lcom/cmdm/control/dao/j;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/bean/ErrorXMLException;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 105
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 31
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "showingCRS"    # Lcom/cmdm/control/bean/ShowingCRS;
    .param p4, "showcategory"    # Ljava/lang/String;
    .param p5, "mode"    # Ljava/lang/String;
    .param p6, "loginMode"    # Ljava/lang/String;
    .param p7, "serverAddress"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "clientid"    # Ljava/lang/String;
    .param p10, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 691
    const/16 v25, 0x0

    .line 693
    .local v25, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "cid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v3

    .line 695
    invoke-virtual {v3}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v24

    .line 696
    .local v24, "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v17, "buddies":Ljava/lang/StringBuilder;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 699
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_1

    .line 709
    .end local v22    # "i":I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    .line 708
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 710
    .local v30, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v21, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v21

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 714
    .local v21, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v27, 0x0

    .line 715
    .local v27, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    .line 719
    const-string v3, "PUT"

    .line 718
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 719
    const-string v8, ""

    const-string v9, "application/xml"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    .line 716
    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v23

    .line 722
    .local v23, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v27

    .line 726
    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 727
    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 731
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    .line 734
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingResult;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 735
    new-instance v6, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/cmdm/control/bean/SettingResult;

    .line 736
    .local v28, "settingResult":Lcom/cmdm/control/bean/SettingResult;
    if-eqz v28, :cond_3

    .line 737
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 738
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 739
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 740
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 741
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    .line 740
    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v26, v25

    .line 765
    .end local v4    # "cid":Ljava/lang/String;
    .end local v17    # "buddies":Ljava/lang/StringBuilder;
    .end local v21    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v23    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v27    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .end local v30    # "url":Ljava/lang/String;
    .local v26, "result":Ljava/lang/Object;
    :goto_1
    return-object v26

    .line 700
    .end local v26    # "result":Ljava/lang/Object;
    .restart local v4    # "cid":Ljava/lang/String;
    .restart local v17    # "buddies":Ljava/lang/StringBuilder;
    .restart local v22    # "i":I
    .restart local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_1
    if-nez v22, :cond_2

    .line 701
    :try_start_2
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 703
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 762
    .end local v4    # "cid":Ljava/lang/String;
    .end local v17    # "buddies":Ljava/lang/StringBuilder;
    .end local v22    # "i":I
    .end local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v19

    .line 763
    .local v19, "e1":Lcom/cmdm/control/exception/a;
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v19    # "e1":Lcom/cmdm/control/exception/a;
    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_3
    move-object/from16 v26, v25

    .line 765
    .restart local v26    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 744
    .end local v26    # "result":Ljava/lang/Object;
    .restart local v4    # "cid":Ljava/lang/String;
    .restart local v17    # "buddies":Ljava/lang/StringBuilder;
    .restart local v21    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v23    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .restart local v30    # "url":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v29, ""

    .line 745
    .local v29, "text":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 746
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 747
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 748
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v29

    .line 750
    :cond_4
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v26, v25

    .line 751
    .restart local v26    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 753
    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v26    # "result":Ljava/lang/Object;
    .end local v28    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .end local v29    # "text":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 754
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 755
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 754
    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v26, v25

    .line 756
    .restart local v26    # "result":Ljava/lang/Object;
    goto/16 :goto_1

    .line 760
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "result":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v20

    .line 761
    .local v20, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "repository_category"    # Ljava/lang/String;
    .param p4, "xml_content"    # Ljava/lang/String;
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 315
    const/16 v22, 0x0

    .line 317
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 319
    .local v26, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 323
    const-string v5, "PUT"

    .line 322
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 320
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 326
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 328
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 332
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v4, 0x0

    .line 331
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 334
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 335
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 338
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 341
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 342
    new-instance v6, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/OperationResult;

    .line 343
    .local v21, "operationResult":Lcom/cmdm/control/bean/OperationResult;
    if-eqz v21, :cond_0

    .line 344
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 345
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 346
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 348
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    .line 347
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 372
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 351
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 352
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 353
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 354
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 355
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v25

    .line 357
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 358
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 360
    .end local v21    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 361
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 362
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 361
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 363
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 367
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 368
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 372
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 369
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 370
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 239
    .local p4, "delXml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 241
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 244
    .local v26, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 249
    const-string v4, "PUT"

    .line 248
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    const-string v6, ""

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 246
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 252
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 256
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v3, 0x0

    .line 255
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 258
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 259
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 261
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 263
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 264
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 265
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 266
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 267
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 270
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 269
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 295
    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 273
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v15    # "contentXml":Ljava/lang/String;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 274
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 275
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 276
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 279
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 280
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 282
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 283
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 284
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 283
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 285
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 289
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 290
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 295
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 291
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 292
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public a(Lcom/cmdm/control/util/client/ResultUtil;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "re":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v7, 0x0

    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 873
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 874
    .local v4, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v4, :cond_0

    .line 875
    iget-object v0, v4, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    .line 876
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 877
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ShowingCRS;

    .line 878
    .local v3, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    if-eqz v3, :cond_0

    .line 879
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/4 v5, 0x1

    .line 880
    const-string v6, ""

    .line 879
    invoke-direct {v1, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    move-object v2, v1

    .line 892
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v3    # "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    .end local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .local v2, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_0
    return-object v2

    .line 885
    .end local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v5, 0xf

    .line 886
    const-string v6, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    .line 885
    invoke-direct {v1, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_1
    :goto_1
    move-object v2, v1

    .line 892
    .restart local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0

    .line 888
    .end local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_2
    if-eqz p1, :cond_1

    .line 889
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v5

    .line 890
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v6

    .line 889
    invoke-direct {v1, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_1
.end method

.method public a(Lcom/cmdm/control/util/client/ResultUtil;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
    .param p2, "missdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "re":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v12, 0x0

    .line 904
    const/4 v6, 0x0

    .line 906
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 907
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 908
    .local v9, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v9, :cond_0

    .line 909
    iget-object v3, v9, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    .line 910
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_1

    .line 938
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_0
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v10, 0xf

    .line 939
    const-string v11, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    .line 938
    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v9    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_1
    move-object v7, v6

    .line 945
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .local v7, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_2
    return-object v7

    .line 912
    .end local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v1    # "i":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v9    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/ShowingCRS;

    .line 913
    .local v8, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    if-eqz v8, :cond_2

    .line 914
    invoke-virtual {v8}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v4

    .line 915
    .local v4, "phoneList":Lcom/cmdm/control/bean/PhoneList;
    if-eqz v4, :cond_2

    .line 917
    invoke-virtual {v4}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v5

    .line 918
    .local v5, "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 919
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 911
    .end local v2    # "j":I
    .end local v4    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .end local v5    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .restart local v2    # "j":I
    .restart local v4    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .restart local v5    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    .local v0, "friendUid":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 922
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .line 923
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/4 v10, 0x1

    const-string v11, ""

    .line 922
    invoke-direct {v6, v10, v11, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    move-object v7, v6

    .line 925
    .restart local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_2

    .line 919
    .end local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 941
    .end local v0    # "friendUid":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v4    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .end local v5    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    .end local v9    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_5
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v10

    .line 942
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v11

    .line 941
    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "range"    # I
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "seletDate"    # Ljava/lang/String;
    .param p7, "dateRange"    # Ljava/lang/String;
    .param p8, "serverAddress"    # I
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "clientid"    # Ljava/lang/String;
    .param p11, "clientKey"    # Ljava/lang/String;
    .param p12, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDIYCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    const/16 v16, 0x0

    .line 395
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 397
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "url":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 399
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 401
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 402
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "diy()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 405
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 408
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyDIYCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    new-instance v4, Lcom/cmdm/control/bean/MyDIYCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyDIYCRSList;-><init>()V

    .line 407
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyDIYCRSList;

    .line 410
    .local v15, "myDIYCRSList":Lcom/cmdm/control/bean/MyDIYCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 411
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 410
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    move-object/from16 v17, v16

    .line 432
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "myDIYCRSList":Lcom/cmdm/control/bean/MyDIYCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :goto_0
    return-object v17

    .line 416
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 417
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 418
    const/4 v2, 0x6

    .line 419
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 417
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    move-object/from16 v17, v16

    .line 420
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 424
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 425
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/4 v2, 0x0

    .line 426
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 425
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 432
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 427
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :catch_1
    move-exception v13

    .line 428
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 429
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 428
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1116
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v5, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p5, :cond_1

    .line 1117
    const-string v5, ""

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1118
    const-string v4, "cid=? and uid=? and (type=? or type=? ) "

    .line 1121
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object p5, v2, v7

    aput-object p4, v2, v8

    const/4 v5, 0x2

    .line 1122
    const-string v6, "3"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 1123
    const-string v6, "4"

    aput-object v6, v2, v5

    .line 1124
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1126
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1128
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1129
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 1131
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1138
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1134
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 1138
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v7, " type=? and uid=? "

    .line 1072
    .local v7, "select":Ljava/lang/String;
    const-string v5, "id desc"

    .line 1073
    .local v5, "orderby":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "3"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 1074
    aput-object p4, v1, v9

    .line 1075
    .local v1, "currentArgs":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    .line 1076
    aput-object p4, v6, v9

    .line 1080
    .local v6, "randomArgs":[Ljava/lang/String;
    new-instance v8, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v8, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v8, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v8}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1085
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v7, v1, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1086
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 1087
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1088
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1094
    :cond_0
    invoke-virtual {v2, v7, v6, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1095
    .local v4, "mRandomCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v4, :cond_1

    .line 1096
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1097
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "mRandomCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v5    # "orderby":Ljava/lang/String;
    .end local v6    # "randomArgs":[Ljava/lang/String;
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_1
    :goto_0
    return-object v0

    .line 1100
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "isLocal"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v17, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    const-string v4, "\u8bf7\u6c42\u670d\u52a1\u5668\u6570\u636e"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1045
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 1043
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v16

    .line 1048
    .local v16, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v15, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v15, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v17

    .line 1052
    return-object v17
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 509
    .local p4, "delXml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 511
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 512
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 513
    .local v26, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 518
    const-string v4, "PUT"

    .line 517
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    const-string v6, ""

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 515
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 521
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 524
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 525
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 528
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 529
    const-string v3, "CaiYinSDK"

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 532
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 534
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 535
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 534
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 536
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 537
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 538
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 541
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 540
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 566
    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 544
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v15    # "contentXml":Ljava/lang/String;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 545
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 546
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 547
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 550
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 551
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 553
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 554
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 555
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 554
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 556
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 560
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 561
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 566
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 562
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 563
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "range"    # I
    .param p5, "crstype"    # Ljava/lang/String;
    .param p6, "loginMode"    # Ljava/lang/String;
    .param p7, "seletDate"    # Ljava/lang/String;
    .param p8, "dateRange"    # Ljava/lang/String;
    .param p9, "serverAddress"    # I
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "clientid"    # Ljava/lang/String;
    .param p12, "clientKey"    # Ljava/lang/String;
    .param p13, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    const/16 v16, 0x0

    .line 972
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 974
    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "url":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v8, p13

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 976
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 979
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 980
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "favorite()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 983
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 984
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 987
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 988
    new-instance v4, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyFavoriteCRSList;-><init>()V

    .line 986
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    .line 989
    .local v15, "myFavoriteCRSList":Lcom/cmdm/control/bean/MyFavoriteCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 990
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 989
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    move-object/from16 v17, v16

    .line 1010
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "myFavoriteCRSList":Lcom/cmdm/control/bean/MyFavoriteCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :goto_0
    return-object v17

    .line 995
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 996
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 997
    const/4 v2, 0x6

    .line 998
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 996
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    move-object/from16 v17, v16

    .line 999
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 1003
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 1004
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1004
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 1010
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 1006
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :catch_1
    move-exception v13

    .line 1007
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1008
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1007
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "range"    # Ljava/lang/String;
    .param p6, "seletDate"    # Ljava/lang/String;
    .param p7, "dateRange"    # Ljava/lang/String;
    .param p8, "serverAddress"    # I
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "clientid"    # Ljava/lang/String;
    .param p11, "clientKey"    # Ljava/lang/String;
    .param p12, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const/16 v16, 0x0

    .line 455
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 457
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "url":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 459
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 462
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 463
    const-string v2, "CaiYinSDK"

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContentDiySelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 466
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 469
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/DIYContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 470
    new-instance v4, Lcom/cmdm/control/bean/DIYContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DIYContentResult;-><init>()V

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/DIYContentResult;

    .line 471
    .local v12, "diyContentResult":Lcom/cmdm/control/bean/DIYContentResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 472
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 471
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    move-object/from16 v17, v16

    .line 492
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "diyContentResult":Lcom/cmdm/control/bean/DIYContentResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :goto_0
    return-object v17

    .line 477
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 478
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 479
    const/4 v2, 0x6

    .line 480
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 478
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    move-object/from16 v17, v16

    .line 481
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 485
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 486
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/4 v2, 0x0

    .line 487
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 486
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 492
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 488
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :catch_1
    move-exception v14

    .line 489
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 490
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 489
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "call_number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1192
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v5, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1193
    if-eqz p5, :cond_1

    const-string v5, ""

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1194
    const-string v4, "call_number=? and uid=? and type=? "

    .line 1197
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p5, v2, v7

    aput-object p4, v2, v8

    const/4 v5, 0x2

    .line 1198
    const-string v6, "1"

    aput-object v6, v2, v5

    .line 1199
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1201
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1203
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1204
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 1206
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1214
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1209
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 1214
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v5, " type=? and uid=? "

    .line 1157
    .local v5, "select":Ljava/lang/String;
    const-string v4, "id desc"

    .line 1158
    .local v4, "orderby":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1159
    const-string v8, "1"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    aput-object p4, v1, v7

    .line 1163
    .local v1, "currentArgs":[Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1165
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1168
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1169
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 1170
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1171
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "orderby":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_0
    :goto_0
    return-object v0

    .line 1174
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 28
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "missdn"    # Ljava/lang/String;
    .param p5, "mode"    # Ljava/lang/String;
    .param p6, "offset"    # Ljava/lang/String;
    .param p7, "range"    # Ljava/lang/String;
    .param p8, "serverAddress"    # I
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "clientid"    # Ljava/lang/String;
    .param p11, "clientKey"    # Ljava/lang/String;
    .param p12, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RichScrnSettingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    const/16 v23, 0x0

    .line 590
    .local v23, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/16 v27, 0x0

    .line 591
    .local v27, "url":Ljava/lang/String;
    const/16 v16, 0x0

    .line 592
    .local v16, "crsType":Ljava/lang/String;
    const-string v4, "2"

    .line 594
    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 592
    invoke-virtual/range {v2 .. v14}, Lcom/cmdm/control/dao/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v22

    .line 595
    .local v22, "re":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 596
    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 597
    .local v26, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v26, :cond_0

    .line 598
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 599
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 600
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_1

    .line 660
    .end local v18    # "i":I
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v26    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_0
    :goto_1
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/16 v2, 0xc

    .line 661
    const-string v3, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    const/4 v4, 0x0

    .line 660
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 662
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 601
    .restart local v18    # "i":I
    .restart local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v26    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/cmdm/control/bean/ShowingCRS;

    .line 602
    .local v25, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v20

    .line 603
    .local v20, "phoneList":Lcom/cmdm/control/bean/PhoneList;
    if-eqz v20, :cond_6

    .line 605
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v21

    .line 606
    .local v21, "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 607
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 609
    .local v17, "friendUid":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 610
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 612
    .local v15, "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    .line 613
    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 614
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    .line 619
    :goto_3
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    .line 621
    .local v24, "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    .line 624
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 625
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 624
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v17    # "friendUid":Ljava/lang/String;
    .end local v24    # "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    :cond_2
    :goto_4
    move-object/from16 v2, v23

    .line 648
    goto :goto_2

    .line 616
    .restart local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .restart local v17    # "friendUid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_3

    .line 632
    .end local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v17    # "friendUid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 633
    .restart local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    .line 634
    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 635
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    .line 640
    :goto_5
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    .line 641
    .restart local v24    # "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    .line 644
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 645
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 644
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    goto :goto_4

    .line 637
    .end local v24    # "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    :cond_5
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_5

    .line 600
    .end local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v21    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 656
    .end local v18    # "i":I
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v20    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .end local v25    # "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    .end local v26    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v2

    .line 657
    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 656
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    goto/16 :goto_1
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "groupid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1269
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v5, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1270
    if-eqz p5, :cond_1

    const-string v5, ""

    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1271
    const-string v4, "group_id=? and uid=? and type=? "

    .line 1274
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p5, v2, v7

    aput-object p4, v2, v8

    const/4 v5, 0x2

    .line 1275
    const-string v6, "2"

    aput-object v6, v2, v5

    .line 1277
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1281
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1282
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 1284
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1291
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1287
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 1291
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v5, " type=? and uid=? group by group_id"

    .line 1234
    .local v5, "select":Ljava/lang/String;
    const-string v4, "id desc"

    .line 1235
    .local v4, "orderby":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "2"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    .line 1236
    aput-object p4, v1, v7

    .line 1240
    .local v1, "currentArgs":[Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1242
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1245
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1246
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 1247
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "orderby":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_0
    :goto_0
    return-object v0

    .line 1251
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "showcategory"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "range"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "loginMode"    # Ljava/lang/String;
    .param p8, "serverAddress"    # I
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "clientid"    # Ljava/lang/String;
    .param p11, "clientKey"    # Ljava/lang/String;
    .param p12, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    const/16 v16, 0x0

    .line 788
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    .line 790
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .local v7, "url":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 792
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 795
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 796
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getShow()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 798
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 801
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ShowingCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 802
    new-instance v4, Lcom/cmdm/control/bean/ShowingCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ShowingCRSList;-><init>()V

    .line 800
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 803
    .local v15, "mShowingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 804
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 803
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    move-object/from16 v17, v16

    .line 862
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "mShowingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :goto_0
    return-object v17

    .line 846
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 847
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 848
    const/4 v2, 0x6

    .line 849
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 847
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    move-object/from16 v17, v16

    .line 850
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 854
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 855
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v2, 0x0

    .line 856
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 855
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 862
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 857
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :catch_1
    move-exception v13

    .line 858
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 859
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 858
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "product_id"    # Ljava/lang/String;
    .param p4, "behaviorType"    # Ljava/lang/String;
    .param p5, "objectId"    # Ljava/lang/String;
    .param p6, "loginMode"    # Ljava/lang/String;
    .param p7, "serverAddress"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "clientid"    # Ljava/lang/String;
    .param p10, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 165
    const/16 v22, 0x0

    .line 166
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 v25, 0x0

    .line 168
    .local v25, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 170
    .local v26, "url":Ljava/lang/String;
    const/16 v21, 0x0

    .line 171
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 173
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postProductInfo()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    .line 175
    const-string v6, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v6}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    const-string v8, ""

    const-string v9, "text/html"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    .line 174
    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 179
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postProductInfo()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v25

    .line 182
    if-eqz v25, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 183
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postProductInfo()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 185
    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 188
    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/ResultInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    new-instance v7, Lcom/cmdm/control/bean/ResultInfo;

    invoke-direct {v7}, Lcom/cmdm/control/bean/ResultInfo;-><init>()V

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v7}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/ResultInfo;

    .line 190
    .local v24, "resultInfo":Lcom/cmdm/control/bean/ResultInfo;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v5, 0x1

    .line 194
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v6

    .line 193
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 222
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultInfo":Lcom/cmdm/control/bean/ResultInfo;
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 197
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultInfo":Lcom/cmdm/control/bean/ResultInfo;
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    if-eqz v24, :cond_1

    .line 198
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 199
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v5, 0x0

    .line 201
    invoke-virtual/range {v24 .. v24}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v6

    .line 200
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 202
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 204
    .end local v23    # "result":Ljava/lang/Object;
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v5, 0x0

    .line 205
    const-string v6, "\u4e1a\u52a1\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    .line 204
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 206
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 209
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v24    # "resultInfo":Lcom/cmdm/control/bean/ResultInfo;
    :catch_0
    move-exception v17

    .line 210
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x6

    .line 211
    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    .line 210
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 212
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 216
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 217
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 222
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 218
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 219
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 91
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 20
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BusinessPackageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const/16 v19, 0x0

    .line 120
    .local v19, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 122
    .local v17, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProductInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 125
    invoke-virtual/range {v3 .. v12}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 128
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProductInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 131
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 134
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/BusinessPackageResult;

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/BusinessPackageResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/BusinessPackageResult;-><init>()V

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/BusinessPackageResult;

    .line 136
    .local v13, "content":Lcom/cmdm/control/bean/BusinessPackageResult;
    new-instance v17, Lcom/cmdm/control/util/client/ResultUtil;

    .line 137
    .end local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 136
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v13}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    move-object/from16 v18, v17

    .line 155
    .end local v8    # "url":Ljava/lang/String;
    .end local v13    # "content":Lcom/cmdm/control/bean/BusinessPackageResult;
    .end local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    .local v18, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    :goto_0
    return-object v18

    .line 139
    .end local v18    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    .restart local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 140
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v17, Lcom/cmdm/control/util/client/ResultUtil;

    .line 141
    const/4 v3, 0x6

    .line 142
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 140
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    move-object/from16 v18, v17

    .line 143
    .restart local v18    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_0

    .line 147
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v18    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v16

    .line 148
    .local v16, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v17, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    const/4 v3, 0x0

    .line 149
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 148
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v8    # "url":Ljava/lang/String;
    .end local v16    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    :goto_1
    move-object/from16 v18, v17

    .line 155
    .restart local v18    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_0

    .line 150
    .end local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    .end local v18    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    :catch_1
    move-exception v15

    .line 151
    .local v15, "e1":Lcom/cmdm/control/exception/a;
    new-instance v17, Lcom/cmdm/control/util/client/ResultUtil;

    .line 152
    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 151
    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v17    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BusinessPackageResult;>;"
    goto :goto_1
.end method
