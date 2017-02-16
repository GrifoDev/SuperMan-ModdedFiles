.class public Lcom/cmdm/control/bean/DisplayResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DisplayResult"
.end annotation


# instance fields
.field public settingList:Lcom/cmdm/control/bean/SettingList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "settingList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettingList()Lcom/cmdm/control/bean/SettingList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cmdm/control/bean/DisplayResult;->settingList:Lcom/cmdm/control/bean/SettingList;

    return-object v0
.end method

.method public setSettingList(Lcom/cmdm/control/bean/SettingList;)V
    .locals 0
    .param p1, "settingList"    # Lcom/cmdm/control/bean/SettingList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cmdm/control/bean/DisplayResult;->settingList:Lcom/cmdm/control/bean/SettingList;

    .line 35
    return-void
.end method
