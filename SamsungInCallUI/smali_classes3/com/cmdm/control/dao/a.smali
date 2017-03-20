.class public Lcom/cmdm/control/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aA:Lcom/cmdm/control/dao/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static aK()Lcom/cmdm/control/dao/a;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lcom/cmdm/control/dao/a;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/cmdm/control/dao/a;

    invoke-direct {v0}, Lcom/cmdm/control/dao/a;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    return-object v0

    .line 67
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
    .line 107
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 109
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-object v0

    .line 112
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
    .line 708
    const/16 v25, 0x0

    .line 710
    .local v25, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, "cid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v3

    .line 712
    invoke-virtual {v3}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v24

    .line 713
    .local v24, "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v17, "buddies":Ljava/lang/StringBuilder;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 716
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_1

    .line 726
    .end local v22    # "i":I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    .line 725
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    .line 727
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

    .line 729
    new-instance v21, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v21

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 731
    .local v21, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v27, 0x0

    .line 732
    .local v27, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    .line 736
    const-string v3, "PUT"

    .line 735
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 736
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

    .line 733
    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v23

    .line 739
    .local v23, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
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

    .line 742
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v27

    .line 743
    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 744
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

    .line 747
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

    .line 748
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

    .line 751
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingResult;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 752
    new-instance v6, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/cmdm/control/bean/SettingResult;

    .line 753
    .local v28, "settingResult":Lcom/cmdm/control/bean/SettingResult;
    if-eqz v28, :cond_3

    .line 754
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 755
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 756
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 757
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 758
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    .line 757
    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v26, v25

    .line 782
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

    .line 717
    .end local v26    # "result":Ljava/lang/Object;
    .restart local v4    # "cid":Ljava/lang/String;
    .restart local v17    # "buddies":Ljava/lang/StringBuilder;
    .restart local v22    # "i":I
    .restart local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :cond_1
    if-nez v22, :cond_2

    .line 718
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

    .line 716
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 720
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
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

    .line 720
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 779
    .end local v4    # "cid":Ljava/lang/String;
    .end local v17    # "buddies":Ljava/lang/StringBuilder;
    .end local v22    # "i":I
    .end local v24    # "mMissdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_0
    move-exception v19

    .line 780
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

    .line 782
    .restart local v26    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 761
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

    .line 762
    .local v29, "text":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 763
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 764
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 765
    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v29

    .line 767
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

    .line 768
    .restart local v26    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 770
    .end local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v26    # "result":Ljava/lang/Object;
    .end local v28    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .end local v29    # "text":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 771
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 772
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 771
    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v25    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v26, v25

    .line 773
    .restart local v26    # "result":Ljava/lang/Object;
    goto/16 :goto_1

    .line 777
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "result":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v20

    .line 778
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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "settingId"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 2333
    const/16 v21, 0x0

    .line 2335
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2337
    .local v25, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delPraise()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 2342
    const-string v4, "PUT"

    .line 2341
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2342
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

    .line 2339
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 2345
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2347
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 2348
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 2349
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2350
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delPraise()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 2352
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 2354
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 2355
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 2354
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 2356
    .local v20, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    .line 2357
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2358
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2359
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2360
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 2361
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 2360
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 2386
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 2364
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 2365
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 2366
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2367
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2368
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2370
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 2371
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2373
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2374
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 2375
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 2374
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 2376
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2380
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 2381
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 2386
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2382
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 2383
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
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
    .line 332
    const/16 v21, 0x0

    .line 334
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 336
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 340
    const-string v5, "PUT"

    .line 339
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
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

    .line 337
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 343
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 349
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v4, 0x0

    .line 348
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 351
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 352
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 355
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 358
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 359
    new-instance v6, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    .line 357
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/OperationResult;

    .line 360
    .local v20, "operationResult":Lcom/cmdm/control/bean/OperationResult;
    if-eqz v20, :cond_0

    .line 361
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 365
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    .line 364
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 389
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 368
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 369
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 370
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 371
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v24

    .line 374
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 375
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 377
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 384
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 385
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 389
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 386
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 387
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
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
    .line 256
    .local p4, "delXml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 258
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 261
    .local v25, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 266
    const-string v4, "PUT"

    .line 265
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
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

    .line 263
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 269
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 273
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v3, 0x0

    .line 272
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 275
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 276
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 278
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 280
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 281
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 282
    .local v20, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    .line 283
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 284
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 287
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 286
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 312
    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 290
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v15    # "contentXml":Ljava/lang/String;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 291
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 292
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 293
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 296
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 297
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 299
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 306
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 307
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 312
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 308
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 309
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
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

    .line 888
    const/4 v1, 0x0

    .line 889
    .local v1, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 890
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 891
    .local v4, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v4, :cond_0

    .line 892
    iget-object v0, v4, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    .line 893
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 894
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ShowingCRS;

    .line 895
    .local v3, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    if-eqz v3, :cond_0

    .line 896
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/4 v5, 0x1

    .line 897
    const-string v6, ""

    .line 896
    invoke-direct {v1, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    move-object v2, v1

    .line 909
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v3    # "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    .end local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .local v2, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_0
    return-object v2

    .line 902
    .end local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v5, 0xf

    .line 903
    const-string v6, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    .line 902
    invoke-direct {v1, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v4    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .restart local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_1
    :goto_1
    move-object v2, v1

    .line 909
    .restart local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_0

    .line 905
    .end local v2    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_2
    if-eqz p1, :cond_1

    .line 906
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v1    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v5

    .line 907
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v6

    .line 906
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

    .line 921
    const/4 v6, 0x0

    .line 923
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 924
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 925
    .local v9, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v9, :cond_0

    .line 926
    iget-object v3, v9, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    .line 927
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_1

    .line 955
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_0
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/16 v10, 0xf

    .line 956
    const-string v11, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    .line 955
    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v9    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_1
    move-object v7, v6

    .line 962
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .local v7, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :goto_2
    return-object v7

    .line 929
    .end local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v1    # "i":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v9    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/ShowingCRS;

    .line 930
    .local v8, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    if-eqz v8, :cond_2

    .line 931
    invoke-virtual {v8}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v4

    .line 932
    .local v4, "phoneList":Lcom/cmdm/control/bean/PhoneList;
    if-eqz v4, :cond_2

    .line 934
    invoke-virtual {v4}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v5

    .line 935
    .local v5, "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 936
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 928
    .end local v2    # "j":I
    .end local v4    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .end local v5    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    .restart local v2    # "j":I
    .restart local v4    # "phoneList":Lcom/cmdm/control/bean/PhoneList;
    .restart local v5    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 938
    .local v0, "friendUid":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 939
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    .line 940
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    const/4 v10, 0x1

    const-string v11, ""

    .line 939
    invoke-direct {v6, v10, v11, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    move-object v7, v6

    .line 942
    .restart local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_2

    .line 936
    .end local v7    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 958
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

    .line 959
    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v11

    .line 958
    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "range"    # I
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BuddySettingsCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2151
    const/16 v22, 0x0

    .line 2153
    .local v22, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v25

    .line 2155
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 2159
    const-string v5, "GET"

    .line 2158
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2159
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2160
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 2156
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 2162
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddysettingsurl="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2165
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 2166
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2167
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddysettings="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2170
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2171
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

    if-nez v4, :cond_0

    .line 2174
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    .line 2175
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2176
    new-instance v6, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    invoke-direct {v6}, Lcom/cmdm/control/bean/BuddySettingsCRSList;-><init>()V

    .line 2173
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    .line 2177
    .local v16, "buddySettingsCRSList":Lcom/cmdm/control/bean/BuddySettingsCRSList;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2178
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    const/4 v4, 0x1

    const-string v5, ""

    .line 2177
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    move-object/from16 v23, v22

    .line 2198
    .end local v16    # "buddySettingsCRSList":Lcom/cmdm/control/bean/BuddySettingsCRSList;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :goto_0
    return-object v23

    .line 2181
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 2182
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2183
    const/4 v4, 0x6

    .line 2184
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    .line 2182
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    move-object/from16 v23, v22

    .line 2185
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    goto :goto_0

    .line 2189
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 2190
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    const/4 v4, 0x0

    .line 2191
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2190
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :cond_1
    :goto_1
    move-object/from16 v23, v22

    .line 2198
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    goto :goto_0

    .line 2193
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
    :catch_1
    move-exception v18

    .line 2194
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2195
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 2194
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuddySettingsCRSList;>;"
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
    .line 411
    const/16 v16, 0x0

    .line 412
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 414
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

    .line 416
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 418
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 419
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

    .line 421
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

    .line 422
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

    .line 425
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyDIYCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    new-instance v4, Lcom/cmdm/control/bean/MyDIYCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyDIYCRSList;-><init>()V

    .line 424
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyDIYCRSList;

    .line 427
    .local v15, "myDIYCRSList":Lcom/cmdm/control/bean/MyDIYCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 428
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 427
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    move-object/from16 v17, v16

    .line 449
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "myDIYCRSList":Lcom/cmdm/control/bean/MyDIYCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :goto_0
    return-object v17

    .line 433
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 434
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 435
    const/4 v2, 0x6

    .line 436
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 434
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    move-object/from16 v17, v16

    .line 437
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 441
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 442
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    const/4 v2, 0x0

    .line 443
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 442
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 449
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_0

    .line 444
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    :catch_1
    move-exception v13

    .line 445
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 446
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 445
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/16 v16, 0x0

    .line 138
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 140
    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 143
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 146
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 147
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paids()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
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

    .line 150
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

    .line 153
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyPaidsCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    new-instance v4, Lcom/cmdm/control/bean/MyPaidsCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyPaidsCRSList;-><init>()V

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyPaidsCRSList;

    .line 155
    .local v15, "myPaidsCRSList":Lcom/cmdm/control/bean/MyPaidsCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 156
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 155
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    move-object/from16 v17, v16

    .line 178
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "myPaidsCRSList":Lcom/cmdm/control/bean/MyPaidsCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    :goto_0
    return-object v17

    .line 162
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 163
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 164
    const/4 v2, 0x6

    .line 165
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 163
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    move-object/from16 v17, v16

    .line 166
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 170
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 171
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 171
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 178
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_0

    .line 173
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    :catch_1
    move-exception v13

    .line 174
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 175
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 174
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "serverAddress"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "clientid"    # Ljava/lang/String;
    .param p6, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsGroupUserResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2404
    const/16 v21, 0x0

    .line 2406
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 2408
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGroupUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const/16 v20, 0x0

    .line 2410
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2412
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 2414
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    .line 2415
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 2414
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 2417
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 2418
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2419
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGroupUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2422
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 2426
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/IsGroupUserResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2427
    new-instance v5, Lcom/cmdm/control/bean/IsGroupUserResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/IsGroupUserResult;-><init>()V

    .line 2425
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/IsGroupUserResult;

    .line 2428
    .local v15, "content":Lcom/cmdm/control/bean/IsGroupUserResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2429
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 2428
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    move-object/from16 v22, v21

    .line 2446
    .end local v15    # "content":Lcom/cmdm/control/bean/IsGroupUserResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    :goto_0
    return-object v22

    .line 2431
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2432
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2433
    const/4 v3, 0x6

    .line 2434
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 2432
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    move-object/from16 v22, v21

    .line 2435
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    goto :goto_0

    .line 2439
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 2440
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    const/4 v3, 0x0

    .line 2441
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2440
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 2446
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    goto :goto_0

    .line 2442
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    :catch_1
    move-exception v17

    .line 2443
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 2444
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2443
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsGroupUserResult;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "range"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .param p10, "mode"    # Ljava/lang/String;
    .param p11, "showcategory"    # Ljava/lang/String;
    .param p12, "friendMobile"    # Ljava/lang/String;
    .param p13, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    const/16 v23, 0x0

    .line 987
    .local v23, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v25, 0x0

    .local v25, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p6

    .line 989
    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, "url":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v8, p13

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 992
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 995
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 996
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 998
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    .line 1000
    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1003
    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    .line 1001
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    .line 1004
    .local v16, "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1005
    const/4 v2, 0x1

    const-string v3, ""

    .line 1004
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    if-nez p13, :cond_0

    .line 1007
    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    if-eqz v16, :cond_0

    .line 1010
    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    .line 1013
    .local v14, "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    if-eqz v14, :cond_0

    .line 1014
    const-string v2, "CaiYinSDK"

    .line 1015
    const-string v3, "caiyinSettingResourceList != null"

    .line 1014
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1018
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1019
    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v20    # "i":I
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    :cond_0
    move-object/from16 v23, v24

    .line 1076
    .end local v7    # "url":Ljava/lang/String;
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_1
    return-object v24

    .line 1023
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v20    # "i":I
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    .line 1024
    .local v13, "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    if-eqz v13, :cond_2

    .line 1025
    const-string v2, "CaiYinSDK"

    .line 1026
    const-string v3, "caiyinSettingResource != null"

    .line 1025
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    .line 1029
    .local v15, "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    if-eqz v15, :cond_2

    .line 1030
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    .line 1033
    .local v26, "thumbUrl":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1033
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    .line 1037
    .local v12, "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 1038
    .local v21, "isSuc":Z
    if-eqz v21, :cond_3

    .line 1039
    const-string v2, "CaiYinSDK"

    .line 1040
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    .line 1039
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v21    # "isSuc":Z
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1042
    .restart local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .restart local v21    # "isSuc":Z
    .restart local v26    # "thumbUrl":Ljava/lang/String;
    :cond_3
    const-string v2, "CaiYinSDK"

    .line 1043
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    .line 1042
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 1057
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v13    # "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v20    # "i":I
    .end local v21    # "isSuc":Z
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1058
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1059
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1058
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1068
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1069
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    .line 1070
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1069
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v7    # "url":Ljava/lang/String;
    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_5
    move-object/from16 v24, v23

    .line 1076
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1060
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    .line 1061
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v17, "e":Ljava/lang/Exception;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1062
    const/4 v2, 0x6

    .line 1063
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1061
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1064
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1071
    .end local v7    # "url":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_2
    move-exception v18

    .line 1072
    .restart local v18    # "e1":Lcom/cmdm/control/exception/a;
    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1073
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1072
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_5

    .line 1071
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_7

    .line 1060
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_4
    move-exception v17

    goto :goto_6

    .line 1057
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_4
    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
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
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDiyVideoList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2280
    const/16 v21, 0x0

    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 2282
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 2285
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoDIY()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    const/16 v20, 0x0

    .line 2287
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2289
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 2291
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 2292
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2293
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 2291
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 2296
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 2298
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2299
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoDIY()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2302
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 2306
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MyDiyVideoList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2307
    new-instance v5, Lcom/cmdm/control/bean/MyDiyVideoList;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MyDiyVideoList;-><init>()V

    .line 2305
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyDiyVideoList;

    .line 2308
    .local v15, "content":Lcom/cmdm/control/bean/MyDiyVideoList;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2309
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 2308
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    move-object/from16 v22, v21

    .line 2327
    .end local v15    # "content":Lcom/cmdm/control/bean/MyDiyVideoList;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    :goto_0
    return-object v22

    .line 2311
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2312
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2313
    const/4 v3, 0x6

    .line 2314
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 2312
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    move-object/from16 v22, v21

    .line 2315
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    goto :goto_0

    .line 2319
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 2320
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    const/4 v3, 0x0

    .line 2321
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2320
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 2327
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    goto :goto_0

    .line 2322
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    :catch_1
    move-exception v17

    .line 2323
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 2324
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2323
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDiyVideoList;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/BuyContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const/16 v16, 0x0

    .line 201
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 203
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 205
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 208
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 209
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBuySelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
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

    .line 211
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

    .line 214
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/BuyContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    new-instance v4, Lcom/cmdm/control/bean/BuyContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/BuyContentResult;-><init>()V

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/BuyContentResult;

    .line 216
    .local v12, "contentResult":Lcom/cmdm/control/bean/BuyContentResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 217
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 216
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    move-object/from16 v17, v16

    .line 239
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "contentResult":Lcom/cmdm/control/bean/BuyContentResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    :goto_0
    return-object v17

    .line 223
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 224
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 225
    const/4 v2, 0x6

    .line 226
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 224
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    move-object/from16 v17, v16

    .line 227
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_0

    .line 231
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 232
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    const/4 v2, 0x0

    .line 233
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 239
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_0

    .line 234
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    :catch_1
    move-exception v14

    .line 235
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 236
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 235
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1956
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 1957
    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1958
    const-string v4, "cid=? and uid=? and (type=? or type=? ) "

    .line 1961
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    .line 1962
    const-string v6, "3"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 1963
    const-string v6, "4"

    aput-object v6, v2, v5

    .line 1964
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1966
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1968
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1969
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 1971
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1978
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1974
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 1978
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

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v7, " type=? and uid=? "

    .line 1913
    .local v7, "select":Ljava/lang/String;
    const-string v5, "id desc"

    .line 1914
    .local v5, "orderby":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "3"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    .line 1915
    aput-object p2, v1, v9

    .line 1916
    .local v1, "currentArgs":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    .line 1917
    aput-object p2, v6, v9

    .line 1921
    .local v6, "randomArgs":[Ljava/lang/String;
    new-instance v8, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v8, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 1923
    .local v8, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v8}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 1926
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v7, v1, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1927
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 1928
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1929
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1935
    :cond_0
    invoke-virtual {v2, v7, v6, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1936
    .local v4, "mRandomCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v4, :cond_1

    .line 1937
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1938
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
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

    .line 1941
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
    .line 1869
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    .local v17, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    const-string v4, "\u8bf7\u6c42\u670d\u52a1\u5668\u6570\u636e"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1884
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1885
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

    .line 1882
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v16

    .line 1887
    .local v16, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    new-instance v15, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v15, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1889
    .local v15, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v17

    .line 1893
    return-object v17
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "friendMobile"    # Ljava/lang/String;
    .param p5, "settingId"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 1518
    const/16 v22, 0x0

    .line 1520
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1522
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentSettingMomentDelete()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1527
    const-string v5, "POST"

    .line 1526
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1527
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 1524
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1530
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1532
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 1533
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1535
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1536
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentSettingMomentDelete()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1536
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
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

    .line 1539
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

    .line 1541
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1542
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1541
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1543
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1544
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1545
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1546
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1547
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1548
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1547
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1573
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 1551
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1552
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1553
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1554
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1555
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1557
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

    .line 1558
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1560
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1561
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1562
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1561
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1563
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1567
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1568
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

    .line 1573
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1569
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1570
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
    .line 526
    .local p4, "delXml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 528
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 530
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

    .line 531
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 535
    const-string v4, "PUT"

    .line 534
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 535
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

    .line 532
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 538
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 541
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 542
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 545
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 546
    const-string v3, "CaiYinSDK"

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
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

    .line 549
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

    .line 551
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 552
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 551
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 553
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 554
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 555
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 558
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 557
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 583
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

    .line 561
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

    .line 562
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 563
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 564
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 565
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 567
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

    .line 568
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 570
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 571
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 572
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 571
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 573
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 577
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 578
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

    .line 583
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 579
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 580
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
    .line 1809
    const/16 v16, 0x0

    .line 1811
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

    .line 1813
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

    .line 1815
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1818
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1819
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

    .line 1821
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

    .line 1822
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1823
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

    .line 1826
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1827
    new-instance v4, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyFavoriteCRSList;-><init>()V

    .line 1825
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    .line 1828
    .local v15, "myFavoriteCRSList":Lcom/cmdm/control/bean/MyFavoriteCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1829
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 1828
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    move-object/from16 v17, v16

    .line 1849
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "myFavoriteCRSList":Lcom/cmdm/control/bean/MyFavoriteCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :goto_0
    return-object v17

    .line 1834
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1835
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1836
    const/4 v2, 0x6

    .line 1837
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1835
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    move-object/from16 v17, v16

    .line 1838
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 1842
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 1843
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    const/4 v2, 0x0

    .line 1844
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1843
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 1849
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_0

    .line 1845
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    :catch_1
    move-exception v13

    .line 1846
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1847
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1846
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "serverAddress"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "clientid"    # Ljava/lang/String;
    .param p6, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesFileResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2452
    const/16 v21, 0x0

    .line 2455
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->w(I)Ljava/lang/String;

    move-result-object v24

    .line 2457
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobilesFile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    const/16 v20, 0x0

    .line 2459
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2461
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 2463
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    .line 2464
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 2463
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 2466
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 2467
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2468
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobilesFile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2471
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 2475
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    .line 2476
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2477
    new-instance v5, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/HarassMobilesFileResult;-><init>()V

    .line 2474
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    .line 2478
    .local v15, "content":Lcom/cmdm/control/bean/HarassMobilesFileResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2479
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 2478
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    move-object/from16 v22, v21

    .line 2496
    .end local v15    # "content":Lcom/cmdm/control/bean/HarassMobilesFileResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    :goto_0
    return-object v22

    .line 2481
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2482
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2483
    const/4 v3, 0x6

    .line 2484
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 2482
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    move-object/from16 v22, v21

    .line 2485
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    goto :goto_0

    .line 2489
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 2490
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    const/4 v3, 0x0

    .line 2491
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2490
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 2496
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    goto :goto_0

    .line 2492
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    :catch_1
    move-exception v17

    .line 2493
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 2494
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2493
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesFileResult;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "range"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .param p10, "mode"    # Ljava/lang/String;
    .param p11, "showcategory"    # Ljava/lang/String;
    .param p12, "friendMobile"    # Ljava/lang/String;
    .param p13, "isLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    const/16 v23, 0x0

    .line 1100
    .local v23, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v25, 0x0

    .local v25, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p6

    .line 1102
    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, "url":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserPicSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v8, p13

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 1105
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 1108
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1109
    const-string v2, "CaiYinSDK"

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserPicSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 1112
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    .line 1114
    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1117
    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    .line 1115
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    .line 1118
    .local v16, "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1119
    const/4 v2, 0x1

    const-string v3, ""

    .line 1118
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1120
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    if-nez p13, :cond_0

    .line 1121
    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    if-eqz v16, :cond_0

    .line 1124
    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    .line 1127
    .local v14, "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    if-eqz v14, :cond_0

    .line 1128
    const-string v2, "CaiYinSDK"

    .line 1129
    const-string v3, "caiyinSettingResourceList != null"

    .line 1128
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1132
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1133
    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v20    # "i":I
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    :cond_0
    move-object/from16 v23, v24

    .line 1190
    .end local v7    # "url":Ljava/lang/String;
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_1
    return-object v24

    .line 1137
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v20    # "i":I
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    .line 1138
    .local v13, "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    if-eqz v13, :cond_2

    .line 1139
    const-string v2, "CaiYinSDK"

    .line 1140
    const-string v3, "caiyinSettingResource != null"

    .line 1139
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    .line 1143
    .local v15, "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    if-eqz v15, :cond_2

    .line 1144
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    .line 1147
    .local v26, "thumbUrl":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    .line 1151
    .local v12, "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 1152
    .local v21, "isSuc":Z
    if-eqz v21, :cond_3

    .line 1153
    const-string v2, "CaiYinSDK"

    .line 1154
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    .line 1153
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v21    # "isSuc":Z
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1156
    .restart local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .restart local v21    # "isSuc":Z
    .restart local v26    # "thumbUrl":Ljava/lang/String;
    :cond_3
    const-string v2, "CaiYinSDK"

    .line 1157
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    .line 1156
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 1171
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v13    # "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v20    # "i":I
    .end local v21    # "isSuc":Z
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1172
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1173
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1172
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1182
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1183
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    .line 1184
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1183
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v7    # "url":Ljava/lang/String;
    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_5
    move-object/from16 v24, v23

    .line 1190
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1174
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    .line 1175
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v17, "e":Ljava/lang/Exception;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1176
    const/4 v2, 0x6

    .line 1177
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1175
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1178
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1185
    .end local v7    # "url":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_2
    move-exception v18

    .line 1186
    .restart local v18    # "e1":Lcom/cmdm/control/exception/a;
    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1187
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1186
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_5

    .line 1185
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_7

    .line 1174
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_4
    move-exception v17

    goto :goto_6

    .line 1171
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_4
    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_4
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
    .line 471
    const/16 v16, 0x0

    .line 472
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 474
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

    .line 476
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 479
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 480
    const-string v2, "CaiYinSDK"

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContentDiySelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
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

    .line 483
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

    .line 486
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/DIYContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    new-instance v4, Lcom/cmdm/control/bean/DIYContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DIYContentResult;-><init>()V

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/DIYContentResult;

    .line 488
    .local v12, "diyContentResult":Lcom/cmdm/control/bean/DIYContentResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 489
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 488
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    move-object/from16 v17, v16

    .line 509
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "diyContentResult":Lcom/cmdm/control/bean/DIYContentResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :goto_0
    return-object v17

    .line 494
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 495
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 496
    const/4 v2, 0x6

    .line 497
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 495
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    move-object/from16 v17, v16

    .line 498
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 502
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 503
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    const/4 v2, 0x0

    .line 504
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 503
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 509
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_0

    .line 505
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    :catch_1
    move-exception v14

    .line 506
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 507
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 506
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    goto :goto_1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "call_number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2032
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2033
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2034
    const-string v4, "call_number=? and uid=? and type=? "

    .line 2037
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    .line 2038
    const-string v6, "1"

    aput-object v6, v2, v5

    .line 2039
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 2041
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 2043
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2044
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 2046
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2054
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 2049
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 2054
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

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v5, " type=? and uid=? "

    .line 1997
    .local v5, "select":Ljava/lang/String;
    const-string v4, "id desc"

    .line 1998
    .local v4, "orderby":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1999
    const-string v8, "1"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    aput-object p2, v1, v7

    .line 2003
    .local v1, "currentArgs":[Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 2005
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 2008
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2009
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 2010
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 2011
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "orderby":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_0
    :goto_0
    return-object v0

    .line 2014
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 2208
    const/16 v22, 0x0

    .line 2211
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2212
    .local v26, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 2216
    const-string v5, "PUT"

    .line 2215
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2216
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

    .line 2213
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 2220
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteDIYVideo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2222
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2221
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 2227
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v4, 0x0

    .line 2226
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 2229
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2230
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteDIYVideo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
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

    .line 2233
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

    .line 2236
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/NewResult;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2237
    new-instance v6, Lcom/cmdm/control/bean/NewResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/NewResult;-><init>()V

    .line 2235
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/NewResult;

    .line 2238
    .local v21, "operationResult":Lcom/cmdm/control/bean/NewResult;
    if-eqz v21, :cond_0

    .line 2239
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2240
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2241
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2242
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 2243
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    .line 2242
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 2269
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "operationResult":Lcom/cmdm/control/bean/NewResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 2246
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "operationResult":Lcom/cmdm/control/bean/NewResult;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 2247
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2248
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2249
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v4

    .line 2250
    const-string v5, ""

    .line 2249
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2251
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v25

    .line 2253
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

    .line 2254
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2256
    .end local v21    # "operationResult":Lcom/cmdm/control/bean/NewResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2257
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 2258
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 2257
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 2259
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2263
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 2264
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

    .line 2269
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2265
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 2266
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

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 1381
    .local p4, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 1383
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/SettingIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 1384
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1386
    .local v26, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1391
    const-string v4, "PUT"

    .line 1390
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1391
    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 1388
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1394
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1397
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 1398
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1401
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1402
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1402
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
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

    .line 1405
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

    .line 1407
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 1408
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1407
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1409
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1410
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1411
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1412
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1413
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 1414
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1413
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1439
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

    .line 1417
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

    .line 1418
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1419
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1420
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1421
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1423
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

    .line 1424
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1426
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1427
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 1428
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1427
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1429
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1433
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1434
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

    .line 1439
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1435
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1436
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
    .line 606
    const/16 v23, 0x0

    .line 607
    .local v23, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/16 v27, 0x0

    .line 608
    .local v27, "url":Ljava/lang/String;
    const/16 v16, 0x0

    .line 609
    .local v16, "crsType":Ljava/lang/String;
    const-string v4, "2"

    .line 611
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

    .line 609
    invoke-virtual/range {v2 .. v14}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v22

    .line 612
    .local v22, "re":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 613
    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 614
    .local v26, "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    if-eqz v26, :cond_0

    .line 615
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 616
    .local v19, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 617
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_1

    .line 677
    .end local v18    # "i":I
    .end local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .end local v26    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_0
    :goto_1
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/16 v2, 0xc

    .line 678
    const-string v3, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    const/4 v4, 0x0

    .line 677
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 679
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 618
    .restart local v18    # "i":I
    .restart local v19    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/ShowingCRS;>;"
    .restart local v26    # "showingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    :cond_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/cmdm/control/bean/ShowingCRS;

    .line 619
    .local v25, "showingCRS":Lcom/cmdm/control/bean/ShowingCRS;
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v20

    .line 620
    .local v20, "phoneList":Lcom/cmdm/control/bean/PhoneList;
    if-eqz v20, :cond_6

    .line 622
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v21

    .line 623
    .local v21, "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 624
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 626
    .local v17, "friendUid":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 627
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 629
    .local v15, "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    .line 630
    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    .line 636
    :goto_3
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    .line 638
    .local v24, "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    .line 641
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 642
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 641
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

    .line 665
    goto :goto_2

    .line 633
    .restart local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .restart local v17    # "friendUid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_3

    .line 649
    .end local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v17    # "friendUid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    .line 650
    .restart local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    .line 651
    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 652
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    .line 657
    :goto_5
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    .line 658
    .restart local v24    # "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    .line 661
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 662
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 661
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    goto :goto_4

    .line 654
    .end local v24    # "richScrnSettingObject":Lcom/cmdm/control/bean/RichScrnSettingObject;
    :cond_5
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_5

    .line 617
    .end local v15    # "cRSProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v21    # "phonelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 673
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

    .line 674
    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 673
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RichScrnSettingObject;>;"
    goto/16 :goto_1
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "groupid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2109
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2110
    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2111
    const-string v4, "group_id=? and uid=? and type=? "

    .line 2114
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    .line 2115
    const-string v6, "2"

    aput-object v6, v2, v5

    .line 2117
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 2119
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 2121
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2122
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 2124
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2131
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 2127
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 2131
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

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobileNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    .local v0, "caiXiangShowingObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    :try_start_0
    const-string v5, " type=? and uid=? group by group_id"

    .line 2074
    .local v5, "select":Ljava/lang/String;
    const-string v4, "id desc"

    .line 2075
    .local v4, "orderby":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "2"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    .line 2076
    aput-object p2, v1, v7

    .line 2080
    .local v1, "currentArgs":[Ljava/lang/String;
    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 2082
    .local v6, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 2085
    .local v2, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2086
    .local v3, "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v3, :cond_0

    .line 2087
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 2088
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "mCaiYinShowingObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v4    # "orderby":Ljava/lang/String;
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :cond_0
    :goto_0
    return-object v0

    .line 2091
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
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
    .line 1591
    .local p4, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 1593
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/SettingIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 1594
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1596
    .local v26, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1597
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1596
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1602
    const-string v4, "PUT"

    .line 1601
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1602
    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 1599
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1605
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1608
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 1609
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1612
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1613
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1614
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1613
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
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

    .line 1617
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

    .line 1619
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 1620
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1619
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1621
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1622
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1623
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1624
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1625
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 1626
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1625
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1651
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

    .line 1629
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

    .line 1630
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1631
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1632
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1633
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1635
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

    .line 1636
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1638
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1639
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 1640
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1639
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1641
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1645
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1646
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

    .line 1651
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1647
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1648
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
    .line 804
    const/16 v16, 0x0

    .line 805
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    .line 807
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

    .line 809
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 812
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 813
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

    .line 814
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

    .line 815
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

    .line 818
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ShowingCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 819
    new-instance v4, Lcom/cmdm/control/bean/ShowingCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ShowingCRSList;-><init>()V

    .line 817
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/ShowingCRSList;

    .line 820
    .local v15, "mShowingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 821
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 820
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    move-object/from16 v17, v16

    .line 879
    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "mShowingCRSList":Lcom/cmdm/control/bean/ShowingCRSList;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :goto_0
    return-object v17

    .line 863
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 864
    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 865
    const/4 v2, 0x6

    .line 866
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 864
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    move-object/from16 v17, v16

    .line 867
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 871
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    .line 872
    .local v14, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    const/4 v2, 0x0

    .line 873
    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 872
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v14    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 879
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_0

    .line 874
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    :catch_1
    move-exception v13

    .line 875
    .local v13, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 876
    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 875
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
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
    .line 1727
    .local p4, "delXml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 1729
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 1730
    .local v15, "contentXml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 1732
    .local v25, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putCollectionDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1737
    const-string v4, "PUT"

    .line 1736
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1737
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

    .line 1734
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 1740
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1744
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v3, 0x0

    .line 1743
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1746
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1747
    const-string v3, "CaiYinSDK"

    .line 1748
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putCollectionDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1747
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1750
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 1752
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 1753
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1752
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 1754
    .local v20, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    .line 1755
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1756
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1757
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1758
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 1759
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1758
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 1784
    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 1762
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v15    # "contentXml":Ljava/lang/String;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 1763
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 1764
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1765
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1766
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1768
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 1769
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1771
    .end local v20    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1778
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 1779
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v15    # "contentXml":Ljava/lang/String;
    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 1784
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1780
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 1781
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    const/16 v23, 0x0

    .line 1213
    .local v23, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v25, 0x0

    .local v25, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 1215
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 1217
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 1220
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1221
    const-string v2, "CaiYinSDK"

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSettingMomentSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1221
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 1224
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    .line 1226
    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1229
    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    .line 1227
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    .line 1230
    .local v16, "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1231
    const/4 v2, 0x1

    const-string v3, ""

    .line 1230
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    if-nez p12, :cond_0

    .line 1233
    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1235
    if-eqz v16, :cond_0

    .line 1236
    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    .line 1239
    .local v14, "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    if-eqz v14, :cond_0

    .line 1240
    const-string v2, "CaiYinSDK"

    .line 1241
    const-string v3, "caiyinSettingResourceList != null"

    .line 1240
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1244
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1245
    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v20    # "i":I
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    :cond_0
    move-object/from16 v23, v24

    .line 1302
    .end local v7    # "url":Ljava/lang/String;
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_1
    return-object v24

    .line 1249
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v20    # "i":I
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    .line 1250
    .local v13, "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    if-eqz v13, :cond_2

    .line 1251
    const-string v2, "CaiYinSDK"

    .line 1252
    const-string v3, "caiyinSettingResource != null"

    .line 1251
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    .line 1255
    .local v15, "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    if-eqz v15, :cond_2

    .line 1256
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    .line 1259
    .local v26, "thumbUrl":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    .line 1263
    .local v12, "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 1264
    .local v21, "isSuc":Z
    if-eqz v21, :cond_3

    .line 1265
    const-string v2, "CaiYinSDK"

    .line 1266
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    .line 1265
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v21    # "isSuc":Z
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1268
    .restart local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .restart local v21    # "isSuc":Z
    .restart local v26    # "thumbUrl":Ljava/lang/String;
    :cond_3
    const-string v2, "CaiYinSDK"

    .line 1269
    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    .line 1268
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 1283
    .end local v12    # "asyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v13    # "caiyinSettingResource":Lcom/cmdm/control/bean/CaiyinSettingResource;
    .end local v14    # "caiyinSettingResourceList":Lcom/cmdm/control/bean/CaiyinSettingResourceList;
    .end local v15    # "crsProfile":Lcom/cmdm/control/bean/CRSProfile;
    .end local v20    # "i":I
    .end local v21    # "isSuc":Z
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiyinSettingResource;>;"
    .end local v26    # "thumbUrl":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1284
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1285
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1284
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1294
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1295
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    .line 1296
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1295
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v7    # "url":Ljava/lang/String;
    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_5
    move-object/from16 v24, v23

    .line 1302
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1286
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    .line 1287
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v17, "e":Ljava/lang/Exception;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1288
    const/4 v2, 0x6

    .line 1289
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1287
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v24, v23

    .line 1290
    .local v24, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto/16 :goto_1

    .line 1297
    .end local v7    # "url":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_2
    move-exception v18

    .line 1298
    .restart local v18    # "e1":Lcom/cmdm/control/exception/a;
    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1299
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1298
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_5

    .line 1297
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    .local v24, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_7

    .line 1286
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_4
    move-exception v17

    goto :goto_6

    .line 1283
    .end local v16    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_3

    .end local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_4
    move-object/from16 v24, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v24    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_4
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1324
    const/16 v16, 0x0

    .line 1325
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 1327
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1329
    .local v7, "url":Ljava/lang/String;
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 1330
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1333
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1334
    const-string v2, "CaiYinSDK"

    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSettingAllSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
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

    .line 1337
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

    .line 1340
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1341
    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    .line 1339
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/CaiyinSettingResult;

    .line 1342
    .local v12, "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1343
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 1342
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v17, v16

    .line 1364
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_0
    return-object v17

    .line 1348
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1349
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1350
    const/4 v2, 0x6

    .line 1351
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1349
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v17, v16

    .line 1352
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 1356
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 1357
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/4 v2, 0x0

    .line 1358
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1357
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 1364
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 1359
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_1
    move-exception v14

    .line 1360
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1361
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1360
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1461
    const/16 v16, 0x0

    .line 1462
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 1464
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 1466
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1468
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFriendSettingSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1471
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

    .line 1472
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

    .line 1475
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1476
    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    .line 1474
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/CaiyinSettingResult;

    .line 1477
    .local v12, "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1478
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 1477
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v17, v16

    .line 1499
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "diyContentResult":Lcom/cmdm/control/bean/CaiyinSettingResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_0
    return-object v17

    .line 1483
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1484
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1485
    const/4 v2, 0x6

    .line 1486
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1484
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    move-object/from16 v17, v16

    .line 1487
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 1491
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 1492
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    const/4 v2, 0x0

    .line 1493
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1492
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 1499
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_0

    .line 1494
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    :catch_1
    move-exception v14

    .line 1495
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1496
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1495
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    goto :goto_1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1673
    const/16 v16, 0x0

    .line 1674
    .local v16, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/16 v18, 0x0

    .local v18, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 1676
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 1678
    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1680
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCollectionSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1683
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

    .line 1684
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

    .line 1687
    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1688
    new-instance v4, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    .line 1686
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/ContentResult;

    .line 1689
    .local v12, "contentResult":Lcom/cmdm/control/bean/ContentResult;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1690
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/4 v2, 0x1

    const-string v3, ""

    .line 1689
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    move-object/from16 v17, v16

    .line 1709
    .end local v7    # "url":Ljava/lang/String;
    .end local v12    # "contentResult":Lcom/cmdm/control/bean/ContentResult;
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    .local v17, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    :goto_0
    return-object v17

    .line 1693
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1694
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1695
    const/4 v2, 0x6

    .line 1696
    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    .line 1694
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    move-object/from16 v17, v16

    .line 1697
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 1701
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    .line 1702
    .local v15, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    const/4 v2, 0x0

    .line 1703
    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1702
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v7    # "url":Ljava/lang/String;
    .end local v15    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    :goto_1
    move-object/from16 v17, v16

    .line 1709
    .restart local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    goto :goto_0

    .line 1704
    .end local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    .end local v17    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    :catch_1
    move-exception v14

    .line 1705
    .local v14, "e1":Lcom/cmdm/control/exception/a;
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    .line 1706
    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1705
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v16    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
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
    .line 94
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 95
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 96
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
