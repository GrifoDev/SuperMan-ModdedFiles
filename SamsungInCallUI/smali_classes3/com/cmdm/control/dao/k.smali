.class public Lcom/cmdm/control/dao/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aO:Lcom/cmdm/control/dao/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/k;->aO:Lcom/cmdm/control/dao/k;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static aU()Lcom/cmdm/control/dao/k;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/cmdm/control/dao/k;->aO:Lcom/cmdm/control/dao/k;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/cmdm/control/dao/k;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/k;->aO:Lcom/cmdm/control/dao/k;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/cmdm/control/dao/k;

    invoke-direct {v0}, Lcom/cmdm/control/dao/k;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/k;->aO:Lcom/cmdm/control/dao/k;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/k;->aO:Lcom/cmdm/control/dao/k;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 791
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 792
    const-string v5, "uid=? and show_method=?  "

    .line 793
    .local v5, "updatewhere":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    aput-object p2, v4, v8

    .line 794
    const-string v6, "3"

    aput-object v6, v4, v9

    .line 795
    .local v4, "updateselectionArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 796
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v6, "show_method"

    .line 797
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 796
    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string v6, "iscurrent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 801
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 803
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v1, v5, v4}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 805
    .local v3, "updateUri":I
    if-lez v3, :cond_0

    .line 806
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 811
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 808
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "mContentValues":Landroid/content/ContentValues;
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v3    # "updateUri":I
    .restart local v4    # "updateselectionArgs":[Ljava/lang/String;
    .restart local v5    # "updatewhere":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 811
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "cotnext"    # Landroid/content/Context;
    .param p2, "missdn"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 619
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 621
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 623
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "2"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    .line 624
    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 626
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " missdn=? and show_method=? and uid=?"

    .line 625
    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 627
    .local v1, "isSuccessed":I
    if-lez v1, :cond_0

    .line 628
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5b58\u5728\u4e2a\u4eba\u7fa4\u7ec4\u81ea\u5c55\u793a\u5220\u9664"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 632
    :goto_0
    return-object v4

    .line 631
    :cond_0
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u4e0d\u5b58\u5728\u4e2a\u4eba\u7fa4\u7ec4\u81ea\u5c55\u793a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/cmdm/control/bean/SwitchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    const/16 v20, 0x0

    .line 1045
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 1047
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1051
    const-string v4, "GET"

    .line 1050
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1051
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1052
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1048
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 1054
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSwitch()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1058
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 1059
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1060
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSwitch()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1062
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 1065
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SwitchResult;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1066
    new-instance v5, Lcom/cmdm/control/bean/SwitchResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SwitchResult;-><init>()V

    .line 1064
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/cmdm/control/bean/SwitchResult;

    .line 1067
    .local v23, "switchResult":Lcom/cmdm/control/bean/SwitchResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1068
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1067
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    move-object/from16 v21, v20

    .line 1086
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "switchResult":Lcom/cmdm/control/bean/SwitchResult;
    .end local v24    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    :goto_0
    return-object v21

    .line 1070
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1071
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1072
    const/4 v3, 0x6

    .line 1073
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1071
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    move-object/from16 v21, v20

    .line 1074
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    goto :goto_0

    .line 1078
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 1079
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    const/4 v3, 0x0

    .line 1080
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1079
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 1086
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    goto :goto_0

    .line 1081
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    :catch_1
    move-exception v16

    .line 1082
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1083
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1082
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SwitchResult;>;"
    goto :goto_1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/cmdm/control/bean/WorkTimeResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    const/16 v21, 0x0

    .line 1336
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->H(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 1337
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1341
    const-string v4, "GET"

    .line 1340
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1341
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1342
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1338
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1344
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getWorkTime()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1347
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1348
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1349
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getWorkTime()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
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

    .line 1351
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

    .line 1354
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/WorkTimeResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1355
    new-instance v5, Lcom/cmdm/control/bean/WorkTimeResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/WorkTimeResult;-><init>()V

    .line 1353
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/WorkTimeResult;

    .line 1356
    .local v15, "content":Lcom/cmdm/control/bean/WorkTimeResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1357
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1356
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    move-object/from16 v22, v21

    .line 1374
    .end local v15    # "content":Lcom/cmdm/control/bean/WorkTimeResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    :goto_0
    return-object v22

    .line 1359
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1360
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1361
    const/4 v3, 0x6

    .line 1362
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1360
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    move-object/from16 v22, v21

    .line 1363
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    goto :goto_0

    .line 1367
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1368
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    const/4 v3, 0x0

    .line 1369
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1368
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1374
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    goto :goto_0

    .line 1370
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    :catch_1
    move-exception v17

    .line 1371
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1372
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1371
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/WorkTimeResult;>;"
    goto :goto_1
.end method

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
    .line 100
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 102
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 103
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "crsprofile"    # Lcom/cmdm/control/bean/CRSProfile;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "mode"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/CRSProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 228
    .local p4, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 230
    .local v6, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    const-string v9, ""

    .line 231
    .local v9, "url":Ljava/lang/String;
    new-instance v5, Lcom/cmdm/control/download/b;

    invoke-direct {v5}, Lcom/cmdm/control/download/b;-><init>()V

    .line 232
    .local v5, "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 233
    .local v3, "isDownLoadFinish":Ljava/lang/Boolean;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 234
    .local v4, "isDownLoadThumbFinish":Ljava/lang/Boolean;
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 235
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v9

    .line 241
    :goto_0
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 242
    invoke-virtual {v5, v9}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 243
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    .line 244
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 245
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 246
    .local v1, "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 248
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 249
    const-string v10, "1"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 254
    const-string v10, "1"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V

    .line 258
    :goto_1
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v1}, Lcom/cmdm/control/dao/k;->a(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 260
    .local v8, "suc":Z
    if-eqz v8, :cond_2

    .line 261
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x1

    const-string v11, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u6210\u529f"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v7, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    const-string v10, "CaiYinSDK"

    const-string v11, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u6210\u529f"

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 274
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v4    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .end local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v8    # "suc":Z
    .end local v9    # "url":Ljava/lang/String;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    return-object v6

    .line 238
    .restart local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v4    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .restart local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 256
    .restart local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_1
    const-string v10, "0"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 270
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v4    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .end local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v10, 0x0

    const-string v11, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v6, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v4    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .restart local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v8    # "suc":Z
    .restart local v9    # "url":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x0

    const-string v11, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 268
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v8    # "suc":Z
    :cond_3
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x0

    const-string v11, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 270
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v8    # "suc":Z
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 29
    .param p1, "showType"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "mode"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "greeting"    # Ljava/lang/String;
    .param p9, "loginMode"    # Ljava/lang/String;
    .param p10, "txtId"    # Ljava/lang/String;
    .param p11, "serverAddress"    # I
    .param p12, "context"    # Landroid/content/Context;
    .param p13, "clientid"    # Ljava/lang/String;
    .param p14, "clientKey"    # Ljava/lang/String;
    .param p15, "workTimeSet"    # Ljava/lang/String;
    .param p16, "channelCode"    # Ljava/lang/String;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 142
    .local p8, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 144
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/16 p10, 0x0

    .line 146
    :try_start_0
    const-string v7, "1"

    const-string v11, "4"

    const-string v12, "3"

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p15

    .line 145
    invoke-static/range {v5 .. v14}, Lcom/cmdm/control/bean/ShowingCRSSetting;->getShowingCRSSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 148
    .local v28, "xml_content":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p10

    move/from16 v3, p11

    move-object/from16 v4, p16

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 150
    .local v27, "url":Ljava/lang/String;
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setShow()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 153
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 154
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    .line 158
    const-string v6, "PUT"

    .line 157
    move-object/from16 v0, p3

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v6}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 158
    const-string v8, ""

    const-string v9, "application/xml"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p2

    move-object/from16 v12, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    .line 155
    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 161
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 164
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 165
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setShow()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 168
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 171
    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/SettingResult;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    new-instance v7, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v7}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v7}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/cmdm/control/bean/SettingResult;

    .line 173
    .local v25, "settingResult":Lcom/cmdm/control/bean/SettingResult;
    if-eqz v25, :cond_0

    .line 174
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    new-instance v23, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    .line 178
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v6

    .line 177
    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v23, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_2
    const-string v5, "CaiYinSDK"

    const-string v6, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v22, v23

    .line 204
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .end local v27    # "url":Ljava/lang/String;
    .end local v28    # "xml_content":Ljava/lang/String;
    :goto_0
    return-object v23

    .line 182
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .restart local v27    # "url":Ljava/lang/String;
    .restart local v28    # "xml_content":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v26, ""

    .line 183
    .local v26, "text":Ljava/lang/String;
    if-eqz v25, :cond_1

    .line 184
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 185
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v26

    .line 188
    :cond_1
    new-instance v23, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v23

    .line 189
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 191
    .end local v25    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    .end local v26    # "text":Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v23, v22

    .line 192
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v17, "e":Ljava/lang/Exception;
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    :try_start_4
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x6

    .line 193
    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    .line 192
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_2

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 194
    .local v23, "result":Ljava/lang/Object;
    goto :goto_0

    .line 198
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 199
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v23, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/cmdm/control/exception/a; {:try_start_5 .. :try_end_5} :catch_1

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v23, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v23

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "url":Ljava/lang/String;
    .end local v28    # "xml_content":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    move-object/from16 v23, v22

    .line 204
    .local v23, "result":Ljava/lang/Object;
    goto :goto_0

    .line 200
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 201
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    :goto_3
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 200
    .end local v18    # "e1":Lcom/cmdm/control/exception/a;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v23, "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "url":Ljava/lang/String;
    .restart local v28    # "xml_content":Ljava/lang/String;
    :catch_2
    move-exception v18

    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3

    .line 191
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v25    # "settingResult":Lcom/cmdm/control/bean/SettingResult;
    :catch_3
    move-exception v17

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 28
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "contentId"    # Ljava/lang/String;
    .param p6, "contentText"    # Ljava/lang/String;
    .param p7, "desString"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "serverAddress"    # I
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "clientid"    # Ljava/lang/String;
    .param p12, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 364
    .local p5, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 366
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p5 .. p7}, Lcom/cmdm/control/bean/SettingMobile;->getRelevanceRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 368
    .local v27, "xmlContent":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 370
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetupContent()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 375
    const-string v5, "POST"

    .line 374
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    .line 372
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 378
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 380
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 383
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 384
    const-string v4, "CaiYinSDK"

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetupContent()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
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

    .line 387
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

    .line 389
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 390
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 391
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 392
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 393
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 396
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 395
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 421
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xmlContent":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 399
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xmlContent":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 400
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 401
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 402
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 405
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

    .line 406
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 408
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 409
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 410
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 409
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 411
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 415
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 416
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
    .end local v27    # "xmlContent":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 421
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 417
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 418
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

.method public a(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "caiXiangShowingObject"    # Lcom/cmdm/control/bean/CaiXiangShowingObject;

    .prologue
    .line 288
    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getThum_url()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getShow_method()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/cmdm/control/dao/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 298
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 302
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, p2}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 305
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :goto_0
    return-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 937
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 938
    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 939
    const-string v4, "cid=? and uid=? and (show_method=? or show_method=? ) "

    .line 940
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    .line 941
    const-string v6, "3"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 942
    const-string v6, "4"

    aput-object v6, v2, v5

    .line 943
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 945
    .local v3, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 947
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 948
    .local v1, "delRow":I
    if-lez v1, :cond_0

    .line 950
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 957
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "delRow":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 953
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "delRow":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v4    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 957
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

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "clientid"    # Ljava/lang/String;
    .param p5, "clientKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 645
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    invoke-direct {v2, p3}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 647
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 649
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v7

    const-string v4, "2"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 651
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " gid=? and show_method=? and uid=?"

    .line 650
    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 652
    .local v1, "isSuccessed":I
    if-lez v1, :cond_0

    .line 653
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u5b58\u5728\u4e2a\u4eba\u7fa4\u7ec4\u81ea\u5c55\u793a\u5220\u9664"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 657
    :goto_0
    return-object v4

    .line 656
    :cond_0
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u4e0d\u5b58\u5728\u4e2a\u4eba\u7fa4\u7ec4\u81ea\u5c55\u793a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "crsprofile"    # Lcom/cmdm/control/bean/CRSProfile;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "mode"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/CRSProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 519
    .local p4, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 520
    .local v11, "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v13, 0x1

    .line 522
    .local v13, "suc":Z
    :try_start_0
    const-string v14, ""

    .line 523
    .local v14, "url":Ljava/lang/String;
    new-instance v10, Lcom/cmdm/control/download/b;

    invoke-direct {v10}, Lcom/cmdm/control/download/b;-><init>()V

    .line 524
    .local v10, "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 525
    .local v8, "isDownLoadFinish":Ljava/lang/Boolean;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 526
    .local v9, "isDownLoadThumbFinish":Ljava/lang/Boolean;
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 527
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v14

    .line 532
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 533
    invoke-virtual {v10, v14}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 534
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz p1, :cond_5

    .line 535
    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 536
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 537
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 538
    const-string v15, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    .line 537
    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 539
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "gid":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v7, v15, :cond_1

    .line 562
    if-eqz v13, :cond_4

    .line 563
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v15, 0x1

    const-string v16, "\u7fa4\u7ec4\u81ea\u5c55\u793a\u6210\u529f"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v12, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    const-string v15, "CaiYinSDK"

    const-string v16, "\u7fa4\u7ec4\u81ea\u5c55\u793a\u6210\u529f"

    invoke-static/range {v15 .. v16}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v12

    .line 575
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "gid":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v9    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .end local v10    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v14    # "url":Ljava/lang/String;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    return-object v11

    .line 529
    .restart local v8    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v9    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .restart local v10    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 541
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "gid":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_1
    new-instance v2, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 542
    .local v2, "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2, v14}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 546
    const-string v15, "2"

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 552
    const-string v15, "1"

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V

    .line 556
    :goto_3
    invoke-virtual {v2, v6}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGid(Ljava/lang/String;)V

    .line 557
    if-eqz v13, :cond_3

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/dao/k;->b(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v13, 0x1

    .line 540
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 554
    :cond_2
    const-string v15, "0"

    invoke-virtual {v2, v15}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 571
    .end local v2    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "gid":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v9    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .end local v10    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v14    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 572
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v15, 0x0

    const-string v16, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 558
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "gid":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v9    # "isDownLoadThumbFinish":Ljava/lang/Boolean;
    .restart local v10    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    .line 566
    .end local v2    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_4
    :try_start_3
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v15, 0x0

    const-string v16, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v11, v12

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 569
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "gid":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_5
    new-instance v12, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v15, 0x0

    const-string v16, "\u5e38\u7528\u8054\u7cfb\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object v11, v12

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto/16 :goto_2

    .line 571
    .end local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .restart local v6    # "gid":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v11    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_5
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 28
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p6, "contentText"    # Ljava/lang/String;
    .param p7, "desString"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "serverAddress"    # I
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "clientid"    # Ljava/lang/String;
    .param p12, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 980
    .local p5, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 982
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p5 .. p7}, Lcom/cmdm/control/bean/SettingMobile;->getRelevanceRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 984
    .local v27, "xmlContent":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 986
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetupBox()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 991
    const-string v5, "POST"

    .line 990
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 991
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    .line 988
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 994
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 996
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 999
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1000
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetupBox()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
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

    .line 1002
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

    .line 1004
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1005
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1004
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1006
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1007
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1008
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1009
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1011
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1010
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1036
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xmlContent":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 1014
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xmlContent":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1015
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1016
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1017
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1018
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1020
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

    .line 1021
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1023
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1024
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1025
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1024
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1026
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1030
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1031
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
    .end local v27    # "xmlContent":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 1036
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1032
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1033
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

.method public b(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "caiXiangShowingObject"    # Lcom/cmdm/control/bean/CaiXiangShowingObject;

    .prologue
    .line 589
    if-eqz p2, :cond_0

    .line 590
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 591
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getThum_url()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 597
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-direct {p0, p1, v3, v4}, Lcom/cmdm/control/dao/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 599
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 601
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 603
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, p2}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 606
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    :goto_0
    return-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "crsprofile"    # Lcom/cmdm/control/bean/CRSProfile;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "mode"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/CRSProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 683
    .local p4, "msisdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 685
    .local v6, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    const-string v9, ""

    .line 686
    .local v9, "url":Ljava/lang/String;
    new-instance v5, Lcom/cmdm/control/download/b;

    invoke-direct {v5}, Lcom/cmdm/control/download/b;-><init>()V

    .line 687
    .local v5, "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 688
    .local v3, "isDownLoadFinish":Ljava/lang/Boolean;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 689
    .local v4, "isDownLoadThumFinish":Ljava/lang/Boolean;
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 690
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v9

    .line 695
    :goto_0
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 696
    invoke-virtual {v5, v9}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 697
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    .line 698
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 699
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 700
    .local v1, "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v1, v9}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    .line 704
    const-string v10, "3"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 705
    const-string v10, "1"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIscurrent(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v1, p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getPosterUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 709
    const-string v10, "1"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V

    .line 713
    :goto_1
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v1}, Lcom/cmdm/control/dao/k;->c(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 715
    .local v8, "suc":Z
    if-eqz v8, :cond_2

    .line 716
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x1

    const-string v11, "\u6240\u6709\u4eba\u81ea\u5c55\u793a\u6210\u529f"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v7, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_1
    const-string v10, "CaiYinSDK"

    const-string v11, "\u6240\u6709\u4eba\u81ea\u5c55\u793a\u6210\u529f"

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 731
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v4    # "isDownLoadThumFinish":Ljava/lang/Boolean;
    .end local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v8    # "suc":Z
    .end local v9    # "url":Ljava/lang/String;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    return-object v6

    .line 692
    .restart local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v4    # "isDownLoadThumFinish":Ljava/lang/Boolean;
    .restart local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {p3}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 711
    .restart local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_1
    const-string v10, "0"

    invoke-virtual {v1, v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 726
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .end local v4    # "isDownLoadThumFinish":Ljava/lang/Boolean;
    .end local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "CaiYinSDK"

    const-string v11, "\u7a0b\u5e8f\u5f02\u5e38"

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v10, 0x0

    const-string v11, "\u6240\u6709\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v6, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 719
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .restart local v3    # "isDownLoadFinish":Ljava/lang/Boolean;
    .restart local v4    # "isDownLoadThumFinish":Ljava/lang/Boolean;
    .restart local v5    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .restart local v8    # "suc":Z
    .restart local v9    # "url":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x0

    const-string v11, "\u6240\u6709\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 720
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_4
    const-string v10, "CaiYinSDK"

    const-string v11, "insertLocalALlSinceShow\u5931\u8d25"

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 723
    .end local v1    # "caiXiangShowingObject":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .end local v8    # "suc":Z
    :cond_3
    :try_start_5
    new-instance v7, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v10, 0x0

    const-string v11, "\u6240\u6709\u4eba\u81ea\u5c55\u793a\u5931\u8d25"

    invoke-direct {v7, v10, v11}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 724
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_6
    const-string v10, "CaiYinSDK"

    const-string v11, "isDownLoadThumFinish\u5931\u8d25"

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 726
    .end local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v6    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3
.end method

.method public c(Landroid/content/Context;Lcom/cmdm/control/bean/CaiXiangShowingObject;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "caiXiangShowingObject"    # Lcom/cmdm/control/bean/CaiXiangShowingObject;

    .prologue
    .line 745
    if-eqz p2, :cond_0

    .line 746
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 747
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 748
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 749
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getThum_url()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getIsgif()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 756
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-virtual {p0, p1, v3, v4}, Lcom/cmdm/control/dao/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 762
    invoke-virtual {p2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-direct {p0, p1, v3}, Lcom/cmdm/control/dao/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 767
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 769
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 771
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, p2}, Lcom/cmdm/control/database/DBContext;->insert(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 772
    .local v1, "isTrue":Ljava/lang/Boolean;
    const-string v3, "CaiYinSDK"

    const-string v4, "caiXiangShowingObject\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "isTrue":Ljava/lang/Boolean;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    :goto_0
    return-object v1

    .line 775
    :cond_0
    const-string v3, "CaiYinSDK"

    const-string v4, "caiXiangShowingObject\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "settingid"    # Ljava/lang/String;
    .param p9, "offset"    # Ljava/lang/String;
    .param p10, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingCommentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    const/16 v21, 0x0

    .line 1169
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    :try_start_0
    move-object/from16 v0, p8

    move/from16 v1, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1172
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1176
    const-string v5, "GET"

    .line 1175
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1177
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1173
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1179
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSettingComments()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1183
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1184
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1185
    const-string v4, "CaiYinSDK"

    .line 1186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSettingComments()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1185
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1188
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

    if-nez v4, :cond_0

    .line 1191
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingCommentResult;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1192
    new-instance v6, Lcom/cmdm/control/bean/SettingCommentResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/SettingCommentResult;-><init>()V

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/SettingCommentResult;

    .line 1193
    .local v24, "switchResult":Lcom/cmdm/control/bean/SettingCommentResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1194
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    const/4 v4, 0x1

    const-string v5, ""

    .line 1193
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    move-object/from16 v22, v21

    .line 1212
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "switchResult":Lcom/cmdm/control/bean/SettingCommentResult;
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    :goto_0
    return-object v22

    .line 1196
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1197
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1198
    const/4 v4, 0x6

    .line 1199
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    .line 1197
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    move-object/from16 v22, v21

    .line 1200
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    goto :goto_0

    .line 1204
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1205
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    const/4 v4, 0x0

    .line 1206
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1205
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1212
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    goto :goto_0

    .line 1207
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    :catch_1
    move-exception v17

    .line 1208
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1209
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1208
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingCommentResult;>;"
    goto :goto_1
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "missdn"    # Ljava/lang/String;
    .param p4, "show_method"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 321
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p3, :cond_1

    .line 322
    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 323
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 325
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 327
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p3}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 328
    aput-object p4, v3, v7

    const/4 v4, 0x2

    invoke-static {p2}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 330
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string v4, " missdn=? and show_method=? and uid=?"

    .line 329
    invoke-virtual {v0, v4, v3}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "isSuccessed":I
    if-lez v1, :cond_0

    .line 332
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 337
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "isSuccessed":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :goto_0
    return-object v4

    .line 334
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "isSuccessed":I
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 337
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "isSuccessed":I
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 828
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p5, :cond_1

    .line 829
    const-string v6, ""

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 830
    invoke-direct {p0, p1, p4}, Lcom/cmdm/control/dao/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 831
    const-string v5, "uid=? and show_method=? and cid=? "

    .line 832
    .local v5, "updatewhere":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p4, v4, v8

    .line 833
    const-string v6, "4"

    aput-object v6, v4, v9

    const/4 v6, 0x2

    aput-object p5, v4, v6

    .line 834
    .local v4, "updateselectionArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 835
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v6, "show_method"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string v6, "iscurrent"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 839
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 841
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v1, v5, v4}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 843
    .local v3, "updateUri":I
    if-lez v3, :cond_0

    .line 844
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 849
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 846
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "mContentValues":Landroid/content/ContentValues;
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v3    # "updateUri":I
    .restart local v4    # "updateselectionArgs":[Ljava/lang/String;
    .restart local v5    # "updatewhere":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 849
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "settingid"    # Ljava/lang/String;
    .param p9, "offset"    # Ljava/lang/String;
    .param p10, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingPraiseResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    const/16 v21, 0x0

    .line 1221
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    :try_start_0
    move-object/from16 v0, p8

    move/from16 v1, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1224
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1228
    const-string v5, "GET"

    .line 1227
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1228
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1229
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1225
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1231
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSettingPraise()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1236
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1237
    const-string v4, "CaiYinSDK"

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSettingPraise()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1237
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1240
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

    if-nez v4, :cond_0

    .line 1243
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingPraiseResult;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1244
    new-instance v6, Lcom/cmdm/control/bean/SettingPraiseResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/SettingPraiseResult;-><init>()V

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/SettingPraiseResult;

    .line 1245
    .local v24, "switchResult":Lcom/cmdm/control/bean/SettingPraiseResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1246
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    const/4 v4, 0x1

    const-string v5, ""

    .line 1245
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    move-object/from16 v22, v21

    .line 1264
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "switchResult":Lcom/cmdm/control/bean/SettingPraiseResult;
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    :goto_0
    return-object v22

    .line 1248
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1249
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1250
    const/4 v4, 0x6

    .line 1251
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    .line 1249
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    move-object/from16 v22, v21

    .line 1252
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    goto :goto_0

    .line 1256
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1257
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    const/4 v4, 0x0

    .line 1258
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1257
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1264
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    goto :goto_0

    .line 1259
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    :catch_1
    move-exception v17

    .line 1260
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    .line 1261
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1260
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SettingPraiseResult;>;"
    goto :goto_1
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 864
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p5, :cond_1

    .line 865
    const-string v6, ""

    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 866
    const-string v5, "uid=? and show_method=? and cid=? "

    .line 867
    .local v5, "updatewhere":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p4, v4, v8

    .line 868
    const-string v6, "3"

    aput-object v6, v4, v9

    const/4 v6, 0x2

    aput-object p5, v4, v6

    .line 869
    .local v4, "updateselectionArgs":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v1, "mContentValues":Landroid/content/ContentValues;
    const-string v6, "show_method"

    .line 871
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 870
    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v6, "iscurrent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 875
    .local v2, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 877
    .local v0, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    invoke-virtual {v0, v1, v5, v4}, Lcom/cmdm/control/database/DBContext;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 879
    .local v3, "updateUri":I
    if-lez v3, :cond_0

    .line 880
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 885
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 882
    .restart local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v1    # "mContentValues":Landroid/content/ContentValues;
    .restart local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .restart local v3    # "updateUri":I
    .restart local v4    # "updateselectionArgs":[Ljava/lang/String;
    .restart local v5    # "updatewhere":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 885
    .end local v0    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v1    # "mContentValues":Landroid/content/ContentValues;
    .end local v2    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;
    .end local v3    # "updateUri":I
    .end local v4    # "updateselectionArgs":[Ljava/lang/String;
    .end local v5    # "updatewhere":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 28
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "workDay"    # Ljava/lang/String;
    .param p9, "startTime"    # Ljava/lang/String;
    .param p10, "endTime"    # Ljava/lang/String;

    .prologue
    .line 1271
    const/16 v22, 0x0

    .line 1273
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p8 .. p10}, Lcom/cmdm/control/bean/WorkTimeSetting;->getWorkTimeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1275
    .local v27, "xmlContent":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 1277
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetWorkTime()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1282
    const-string v5, "POST"

    .line 1281
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1282
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1279
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1285
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1287
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1290
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1291
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postSetWorkTime()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
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

    .line 1293
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

    .line 1295
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1296
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1295
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1297
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1298
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1299
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1300
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1301
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1302
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1301
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1327
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xmlContent":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 1305
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xmlContent":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1306
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1307
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1308
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1309
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1311
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

    .line 1312
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1314
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1315
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1316
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1315
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1317
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1321
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1322
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
    .end local v27    # "xmlContent":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 1327
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1323
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1324
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

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientid"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "groupid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v6, "mGroupMembers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    const-string v10, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 904
    :try_start_0
    new-instance v9, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;

    invoke-direct {v9, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;-><init>(Landroid/content/Context;)V

    .line 906
    .local v9, "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v9}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    .line 908
    .local v3, "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    const-string v8, " show_method=? and uid=? and gid=?"

    .line 909
    .local v8, "select":Ljava/lang/String;
    const-string v7, " autoid desc"

    .line 910
    .local v7, "orderby":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "2"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    const/4 v10, 0x2

    .line 911
    aput-object p5, v1, v10

    .line 913
    .local v1, "currentArgs":[Ljava/lang/String;
    invoke-virtual {v3, v8, v1, v7}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 914
    .local v2, "currentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 915
    const-string v10, "CaiYinSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "currentList==="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v5, v10, :cond_1

    .line 925
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "currentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v5    # "i":I
    .end local v7    # "orderby":Ljava/lang/String;
    .end local v8    # "select":Ljava/lang/String;
    .end local v9    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    :cond_0
    :goto_1
    return-object v6

    .line 917
    .restart local v1    # "currentArgs":[Ljava/lang/String;
    .restart local v2    # "currentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .restart local v5    # "i":I
    .restart local v7    # "orderby":Ljava/lang/String;
    .restart local v8    # "select":Ljava/lang/String;
    .restart local v9    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-virtual {v10}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "currentArgs":[Ljava/lang/String;
    .end local v2    # "currentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v3    # "dbContext":Lcom/cmdm/control/database/DBContext;, "Lcom/cmdm/control/database/DBContext<Lcom/cmdm/control/bean/CaiXiangShowingObject;>;"
    .end local v5    # "i":I
    .end local v7    # "orderby":Ljava/lang/String;
    .end local v8    # "select":Ljava/lang/String;
    .end local v9    # "strategy":Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
    :catch_0
    move-exception v4

    .line 922
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 28
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "contentText"    # Ljava/lang/String;
    .param p9, "settingId"    # Ljava/lang/String;

    .prologue
    .line 1093
    const/16 v22, 0x0

    .line 1095
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p8 .. p8}, Lcom/cmdm/control/bean/CommentContent;->getRelevanceRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1096
    .local v27, "xmlContent":Ljava/lang/String;
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 1099
    .local v26, "url":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p5 .. p5}, Lcom/cmdm/control/util/client/SharedPreferencesSDKUtil;->hasRecordData(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 1108
    :goto_0
    :try_start_2
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postCommentForSetting()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1113
    const-string v5, "POST"

    .line 1112
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1113
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1110
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1116
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1121
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1122
    const-string v4, "CaiYinSDK"

    .line 1123
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postCommentForSetting()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1122
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
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

    .line 1125
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 1127
    :try_start_3
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1128
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1127
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 1129
    .local v21, "profileResult":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    .line 1130
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1131
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1132
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1133
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1134
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1133
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1159
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xmlContent":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_1
    return-object v23

    .line 1137
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xmlContent":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1138
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1139
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1140
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1141
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1143
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1144
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 1146
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1147
    .local v16, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1148
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1147
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1149
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 1153
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1154
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xmlContent":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    move-object/from16 v23, v22

    .line 1159
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 1155
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1156
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 1105
    .end local v17    # "e1":Lcom/cmdm/control/exception/a;
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xmlContent":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "starId"    # Ljava/lang/String;
    .param p9, "contentid"    # Ljava/lang/String;

    .prologue
    .line 1380
    const/16 v21, 0x0

    .line 1382
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1384
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1388
    const-string v5, "PUT"

    .line 1387
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1388
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1385
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 1391
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "voteForStar()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1394
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1396
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1397
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "voteForStar()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
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

    .line 1399
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

    .line 1402
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1403
    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1401
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 1404
    .local v20, "operationResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    .line 1405
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1406
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1407
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1408
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1409
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1408
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 1431
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 1412
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "operationResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 1413
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 1414
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1415
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1416
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1418
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

    .line 1419
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1421
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1425
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 1426
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

    .line 1431
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1427
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 1428
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
    .line 87
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 88
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 89
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "contentSwitch"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 441
    const/16 v21, 0x0

    .line 443
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->r(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 446
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 450
    const-string v4, "POST"

    .line 449
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
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

    .line 447
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 453
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 455
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 456
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postSetSwitch()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 459
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postSetSwitch()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
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

    .line 462
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

    .line 464
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 465
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 464
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/k;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 466
    .local v20, "mResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 467
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 470
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 469
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 494
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 473
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 474
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 475
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 478
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

    .line 479
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 481
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 482
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 483
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 482
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 484
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 488
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/k;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 489
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

    .line 494
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 490
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 491
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
