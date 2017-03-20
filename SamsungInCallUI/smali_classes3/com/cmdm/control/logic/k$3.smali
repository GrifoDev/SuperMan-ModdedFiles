.class Lcom/cmdm/control/logic/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;

.field private final synthetic cq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 736
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 738
    :try_start_0
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v9, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/cmdm/control/logic/k;->aI(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v7

    .line 739
    .local v7, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 741
    invoke-virtual {v7}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/DisplayResult;

    .line 742
    .local v5, "mDisplayResult":Lcom/cmdm/control/bean/DisplayResult;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v3, "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    if-eqz v5, :cond_0

    .line 744
    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 745
    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    .line 746
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingList;->getDisplaySettingInfoList()Ljava/util/ArrayList;

    move-result-object v8

    .line 745
    if-eqz v8, :cond_0

    .line 748
    invoke-virtual {v5}, Lcom/cmdm/control/bean/DisplayResult;->getSettingList()Lcom/cmdm/control/bean/SettingList;

    move-result-object v8

    .line 749
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingList;->getDisplaySettingInfoList()Ljava/util/ArrayList;

    move-result-object v6

    .line 751
    .local v6, "mDisplaySettingListInof":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/DisplaySettingInfo;>;"
    const/4 v0, 0x0

    .line 752
    .local v0, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_2

    .line 874
    .end local v0    # "i":I
    .end local v6    # "mDisplaySettingListInof":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/DisplaySettingInfo;>;"
    :cond_0
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v9, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/cmdm/control/logic/k;->aG(Ljava/lang/String;)V

    .line 878
    if-eqz v3, :cond_1

    .line 879
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 880
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/logic/k;->w(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v3    # "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v5    # "mDisplayResult":Lcom/cmdm/control/bean/DisplayResult;
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 886
    return-void

    .line 756
    .restart local v0    # "i":I
    .restart local v3    # "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .restart local v5    # "mDisplayResult":Lcom/cmdm/control/bean/DisplayResult;
    .restart local v6    # "mDisplaySettingListInof":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/DisplaySettingInfo;>;"
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 757
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 756
    if-eqz v8, :cond_4

    .line 758
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 759
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 760
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v8

    .line 758
    if-eqz v8, :cond_4

    .line 761
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 762
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 763
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getDefaultFlag()Ljava/lang/String;

    move-result-object v8

    .line 764
    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 766
    :try_start_2
    new-instance v2, Lcom/cmdm/control/download/b;

    invoke-direct {v2}, Lcom/cmdm/control/download/b;-><init>()V

    .line 785
    .local v2, "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 786
    .local v1, "isDownHiFiFinish":Ljava/lang/Boolean;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 787
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 788
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 786
    if-eqz v8, :cond_3

    .line 790
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 791
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 792
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 793
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 796
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 797
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 798
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 795
    invoke-virtual {v2, v8}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 800
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 801
    new-instance v4, Lcom/cmdm/control/bean/CaiYinShowingObject;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiYinShowingObject;-><init>()V

    .line 804
    .local v4, "mCaiYinShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 805
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 806
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getCid()Ljava/lang/String;

    move-result-object v8

    .line 803
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setCid(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 810
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getDateType()Ljava/lang/String;

    move-result-object v8

    .line 808
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setDateType(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 814
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getGreeting()Ljava/lang/String;

    move-result-object v8

    .line 812
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 816
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->cq:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 818
    iget-object v8, p0, Lcom/cmdm/control/logic/k$3;->co:Lcom/cmdm/control/logic/k;

    iget-object v8, v8, Lcom/cmdm/control/logic/k;->cj:Lcom/cmdm/control/bean/CaiXiangSetting;

    .line 819
    invoke-virtual {v8}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v8

    .line 818
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUid(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 823
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 824
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getPosterUrl()Ljava/lang/String;

    move-result-object v8

    .line 821
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPosterUrl(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 828
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getPriority()Ljava/lang/String;

    move-result-object v8

    .line 826
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setPriority(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 832
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingEndDate()Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndDate(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 836
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingEndTime()Ljava/lang/String;

    move-result-object v8

    .line 834
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingEndTime(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 840
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingId()Ljava/lang/String;

    move-result-object v8

    .line 838
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingId(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 844
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingStartDate()Ljava/lang/String;

    move-result-object v8

    .line 842
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartDate(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 848
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingStartTime()Ljava/lang/String;

    move-result-object v8

    .line 846
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingStartTime(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 852
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingWeek()Ljava/lang/String;

    move-result-object v8

    .line 850
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setSettingWeek(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 856
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getTiming()Ljava/lang/String;

    move-result-object v8

    .line 854
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setTiming(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/DisplaySettingInfo;

    .line 860
    invoke-virtual {v8}, Lcom/cmdm/control/bean/DisplaySettingInfo;->getSettingContentType()Lcom/cmdm/control/bean/SettingContentType;

    move-result-object v8

    .line 861
    invoke-virtual {v8}, Lcom/cmdm/control/bean/SettingContentType;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 858
    invoke-virtual {v4, v8}, Lcom/cmdm/control/bean/CaiYinShowingObject;->setUrl(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 752
    .end local v1    # "isDownHiFiFinish":Ljava/lang/Boolean;
    .end local v2    # "mAsyncLoadImageTask":Lcom/cmdm/control/download/b;
    .end local v4    # "mCaiYinShowingObject":Lcom/cmdm/control/bean/CaiYinShowingObject;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 883
    .end local v0    # "i":I
    .end local v3    # "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .end local v5    # "mDisplayResult":Lcom/cmdm/control/bean/DisplayResult;
    .end local v6    # "mDisplaySettingListInof":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/DisplaySettingInfo;>;"
    .end local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 865
    .restart local v0    # "i":I
    .restart local v3    # "mCaiYinShowingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CaiYinShowingObject;>;"
    .restart local v5    # "mDisplayResult":Lcom/cmdm/control/bean/DisplayResult;
    .restart local v6    # "mDisplaySettingListInof":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/DisplaySettingInfo;>;"
    .restart local v7    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :catch_1
    move-exception v8

    goto :goto_2
.end method
