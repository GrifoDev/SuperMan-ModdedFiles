.class Lcom/cmdm/control/logic/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/logic/k;->bA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic co:Lcom/cmdm/control/logic/k;

.field private final synthetic cr:Lcom/cmdm/control/download/b;


# direct methods
.method constructor <init>(Lcom/cmdm/control/logic/k;Lcom/cmdm/control/download/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmdm/control/logic/k$4;->co:Lcom/cmdm/control/logic/k;

    iput-object p2, p0, Lcom/cmdm/control/logic/k$4;->cr:Lcom/cmdm/control/download/b;

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1088
    iget-object v4, p0, Lcom/cmdm/control/logic/k$4;->co:Lcom/cmdm/control/logic/k;

    invoke-virtual {v4}, Lcom/cmdm/control/logic/k;->bz()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v3

    .line 1089
    .local v3, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1090
    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/DefaultCRSInfo;

    .line 1091
    .local v2, "mDefaultCRSInfo":Lcom/cmdm/control/bean/DefaultCRSInfo;
    if-eqz v2, :cond_0

    .line 1092
    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    if-eqz v4, :cond_0

    .line 1093
    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1094
    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1095
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1097
    :try_start_0
    iget-object v4, p0, Lcom/cmdm/control/logic/k$4;->cr:Lcom/cmdm/control/download/b;

    .line 1098
    iget-object v5, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    .line 1099
    invoke-virtual {v5}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 1098
    invoke-virtual {v4, v5}, Lcom/cmdm/control/download/b;->aB(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1100
    .local v1, "isDownFinish":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1101
    iget-object v4, v2, Lcom/cmdm/control/bean/DefaultCRSInfo;->content:Lcom/cmdm/control/bean/ContentType;

    .line 1102
    invoke-virtual {v4}, Lcom/cmdm/control/bean/ContentType;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 1101
    invoke-static {v4}, Lcom/cmdm/control/util/client/Setting;->saveSystemDefaultUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v1    # "isDownFinish":Ljava/lang/Boolean;
    .end local v2    # "mDefaultCRSInfo":Lcom/cmdm/control/bean/DefaultCRSInfo;
    :cond_0
    :goto_0
    return-void

    .line 1104
    .restart local v2    # "mDefaultCRSInfo":Lcom/cmdm/control/bean/DefaultCRSInfo;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
